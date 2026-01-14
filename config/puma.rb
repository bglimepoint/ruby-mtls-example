threads 1, 5
port ENV.fetch('PORT') { 3000 }
workers ENV.fetch('WORKERS') { 2 }.to_i

bind 'ssl://testing.local.gd:9292?key=testing.local.gd-key.pem&cert=testing.local.gd.pem&ca=/root/.local/share/mkcert/rootCA.pem&verify_mode=force_peer'
