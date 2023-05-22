#!/bin/bash

echo "Enter your project name:"
read PROJECT_NAME

gcloud config set project $PROJECT_NAME
gcloud compute firewall-rules create allow-http --allow tcp:80 --target-tags=http

gcloud compute instances create shipping-srv --machine-type=n1-standard-1 --zone=us-central1-b --subnet=default --tags http
gcloud compute instances create support-srv --machine-type=n1-standard-1 --zone=us-central1-b --subnet=default 
gcloud compute instances create sales-srv --machine-type=n1-standard-1 --zone=us-central1-b --subnet=default --tags http


HTML_CONTENT_Sales="<h1>Welcome to Abdelrahman's Sales Website</h1>"
HTML_CONTENT_Shipping="<h1>Welcome to Abdelrahman's Shipping Website</h1>"
HTML_CONTENT_Support="<h1>Welcome to Abdelrahman's Support Website</h1>"


gcloud compute ssh shipping-srv --zone=us-central1-b --command "sudo apt update && sudo apt-get install nginx-light -y && sudo systemctl start nginx && echo \"$HTML_CONTENT_Shipping\" | sudo tee /var/www/html/index.nginx-debian.html > /dev/null"
gcloud compute ssh support-srv --zone=us-central1-b --command "sudo apt update && sudo apt-get install nginx-light -y && sudo systemctl start nginx && echo \"$HTML_CONTENT_Support\" | sudo tee /var/www/html/index.nginx-debian.html > /dev/null"
gcloud compute ssh sales-srv --zone=us-central1-b --command "sudo apt update && sudo apt-get install nginx-light -y && sudo systemctl start nginx && echo \"$HTML_CONTENT_Sales\" | sudo tee /var/www/html/index.nginx-debian.html > /dev/null"
