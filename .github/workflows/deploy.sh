cd /path/to/your-repo
vi deploy.sh   # ya nano.
# Paste content, save
chmod +x deploy.sh   # executable banayein
git add deploy.sh
git commit -m "Add deployment script"
git push origin main
