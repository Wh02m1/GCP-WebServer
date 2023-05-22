![Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Google_Cloud_logo.svg/2560px-Google_Cloud_logo.svg.png)
# GCP Multiple Instance Setup with Nginx Deployment

Automate the setup of multiple instances on Google Cloud Platform (GCP) and deploy Nginx web servers on each instance with custom HTML content using this professional bash script.

## Features

- Creates multiple instances on GCP with Nginx web servers and custom HTML content.
- Enables internal communication between all instances within the same Virtual Private Cloud (VPC).
- Allows external access to all instances except the Support Server, providing controlled access to the deployed web servers.
- Simplifies the setup process by leveraging the Google Cloud SDK (`gcloud`) command-line tool.
- Ensures a secure and scalable environment for hosting web applications on GCP.

## Prerequisites

To use this script, you need:

- Google Cloud SDK (`gcloud`) installed and configured on your local machine.
- Sufficient permissions and access in your GCP project to create instances and firewall rules.

## Usage

1. Clone this repository or download the script to your local machine.
2. Open a terminal or command prompt.
3. Navigate to the directory where the script is located.
4. Make the script executable by running the following command:

   ```bash
   sudo chmod +x GCP_Script.sh
   bash GCP_Script.sh

## Customization
You can customize the HTML content displayed on each instance's Nginx web page by modifying the respective variables in the script. This allows you to tailor the content to your specific needs.

## Contribution
Contributions to this project are welcome! If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request on GitHub.

