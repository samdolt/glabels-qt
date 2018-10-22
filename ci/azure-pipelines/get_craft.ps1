git clone https://github.com/KDE/craft.git
cd craft

# Craft bootstrap is interactive, but Azure Pipeline doesn't allow keyboard input
# We need to apply some patch
git am "../ci/azure-pipelines/0001-Non-interactive-install-with-MSVC2017-as-default-com.patch"
cd ..
