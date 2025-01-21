# Open WebUI

- [ ] Finish the [Deploy on AWS](#Deploy%20on%20AWS) section.

- [Open WebUI](https://openwebui.com) / [Documentation](https://docs.openwebui.com) / [GitHub](https://github.com/open-webui/open-webui)

## Anthropic

- [Anthropic Console](https://console.anthropic.com/dashboard)

Log in to [openwebui.com](https://openwebui.com) and go to *Functions*.

Find the **Anthropic** function and click **Get**.

Add the URL `https://ai.lukejanicke.com` and click **Import to Open WebUI**.

When it opens, click **Save** and close the function.

Find Anthropic in the functions list and click *Valves* (the gear icon).

Paste an Anthropic API key, click **Save** and close and **Enable** the function.

## OpenRouter

-  [Open Router]()

Go to *Admin Panel* → *Settings* → *Connections*.

Under **OpenAI API**, click the + symbol.

For **API Base URL**, enter `https://openrouter.ai/api/v1`.

Enter an API key from OpenRouter and click **Save**.

## Deploy on AWS

Launch an Amazon Linux EC2 instance with >=16GB  and connect via SSH.

Install [uv](uv.md) using the standalone installer.

```shell
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Create a virtual environment with Python 3.11.

```shell
uv venv --python 3.11
```

Activate the virtual environment.

```shell
source .venv/bin/activate
```

Install **Open WebUI**.

```shell
uv pip install open-webui
```

Create a service file.

```
sudo vi /etc/systemd/system/open-webui.service
```

```
# /etc/systemd/system/open-webui.service

[Unit]
Description=Open WebUI Service
After=network.target

[Service]
User=ec2-user
WorkingDirectory=/home/ec2-user
ExecStart=/bin/bash -c "source /home/ec2-user/.venv/bin/activate && open-webui serve --host 0.0.0.0 --port 8080"
Restart=always

[Install]
WantedBy=multi-user.target
```

Enable and start the service.

```shell
sudo systemctl daemon-reload
sudo systemctl enable open-webui
sudo systemctl start open-webui
```

Check the service status.

```
sudo systemctl status open-webui
```

---

Create a DNS record to point `ai.lukejanicke.com` to the EC2 instance public IP.

```shell
aws route53 change-resource-record-sets \
  --hosted-zone-id Z30HSL8BI5BDS1 \
  --change-batch '{
      "Changes": [
          {
              "Action": "UPSERT",
              "ResourceRecordSet": {
                  "Name": "ai.lukejanicke.com",
                  "Type": "A",
                  "TTL": 300,
                  "ResourceRecords": [
                      {
                          "Value": "47.128.237.35"
                      }
                  ]
              }
          }
      ]
  }'
```

Request a certificate.

```shell
aws acm request-certificate \
  --domain-name "*.lukejanicke.com" \
  --validation-method DNS \
  --subject-alternative-names "lukejanicke.com" \
  --query "CertificateArn" \
  --output text
```

Get DNS validation information.

```shell
aws acm describe-certificate \
  --certificate-arn arn:aws:acm:ap-southeast-1:024171276396:certificate/7f098eb9-ae62-44bb-9a58-6c7eac32ce30 \
  --query "Certificate.DomainValidationOptions" \
  --output json
```

Add the required CNAME record for validation.

```shell
aws route53 change-resource-record-sets \
  --hosted-zone-id Z30HSL8BI5BDS1 \
  --change-batch '{
      "Changes": [
          {
              "Action": "UPSERT",
              "ResourceRecordSet": {
                  "Name": "_a9134b52c00e787334aa207753c4c3a9.lukejanicke.com.",
                  "Type": "CNAME",
                  "TTL": 300,
                  "ResourceRecords": [
                      {
                          "Value": "_068f4f02603ef4e3f753efdba4833990.ltfvzjuylp.acm-validations.aws."
                      }
                  ]
              }
          }
      ]
  }'
```

Wait for validation.

```shell
aws acm describe-certificate \
  --certificate-arn arn:aws:acm:ap-southeast-1:024171276396:certificate/7f098eb9-ae62-44bb-9a58-6c7eac32ce30 \
  --query "Certificate.Status" \
  --output text
```

Create a group.

```shell
...
```