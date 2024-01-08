# Check if pipreqs is installed
if ! python3 -m pipreqs.pipreqs --help &> /dev/null; then
    echo "pipreqs is not installed. Installing pipreqs..."
    python3 -m pip install pipreqs
else
    echo "pipreqs is already installed."
fi

# Run pipreqs to generate requirements.txt
python3 -m pipreqs.pipreqs --mode no-pin --force

# Append Flask and uWSGI to requirements.txt
echo "uWSGI" >> requirements.txt

echo "Requirements generation complete."

