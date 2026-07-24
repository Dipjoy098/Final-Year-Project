cd ~/Downloads/ecommerce-platform/ecommerce-platform
for svc in catalog cart order payment; do
  sed -i 's|node --test src/\*.test.js|node --test|' services/$svc/package.json
done
grep '"test"' services/*/package.json
