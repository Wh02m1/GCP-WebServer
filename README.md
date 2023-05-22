
# Project Description

This script sets up multiple instances on Google Cloud Platform (GCP) and deploys Nginx web servers on each instance with custom HTML content.

- All instances will reach each other internally (Same VPC)  
- All instances will be reached by anyone externally except Support Server (not in http tag which allow all the http request in the firewall rule)

## Prerequisites

- You should have the Google Cloud SDK (`gcloud`) installed and configured.
- Ensure you have the necessary permissions and access to create instances and firewall rules in your GCP project.

## Usage

1. Clone the repository or download the script.
2. Open a terminal or command prompt.
3. Navigate to the directory containing the script.
4. Run the script using the following command:

   ```bash
   sudo chmod +x GCP_Script.sh
   bash GCP_Script.sh
