git clone https://github.com/winkxx/bgmi-test.git
chmod 0777 /bgmi-test
cp /bgmi-test/nginx.conf /etc/nginx/
python3 /bgmi-test/nginx.py

bgmi install
pip install bgmi -U
bgmi upgrade
bgmi config
bgmi_http --port=8868 --address=0.0.0.0

nginx -c /etc/nginx/nginx.conf
nginx -s reload
