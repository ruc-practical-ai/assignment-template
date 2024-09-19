echo "Installing http-server..."

npm i -g http-server

if [ $? -eq 0 ]; then
    echo "http-server installed!"
else
    echo "Failed to install http-server."
    exit 1
fi

echo "Installing texlive..."

sudo apt-get -y update
sudo apt-get -y install texlive

if [ $? -eq 0 ]; then
    echo "Texlive installed!"
else
    echo "Failed to install texlive."
    exit 1
fi

sudo apt-get -y install dvipng texlive-latex-extra texlive-fonts-recommended cm-super

if [ $? -eq 0 ]; then
    echo "Texlive extras and fonts installed!"
else
    echo "Failed to install texlive extras and fonts."
    exit 1
fi

echo "Installing Poetry..."

pip install poetry

if [ $? -eq 0 ]; then
    echo "Poetry installed!"
else
    echo "Failed to install Poetry."
    exit 1
fi

echo "Configuring Poetry virtual environments..."

poetry config virtualenvs.in-project true

if [ $? -eq 0 ]; then
    echo "Virtual environments configured!"
else
    echo "Failed to configure virtual environments."
    exit 1
fi

echo "Installing repository..."

poetry install --with dev --no-root

if [ $? -eq 0 ]; then
    echo "Repository dependencies installed!"
else
    echo "Failed to install repository dependencies."
    exit 1
fi

echo "Success!"

exit 0