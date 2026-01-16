# CPU only install command to match DiffPD's original torch and torchvision versions.
pip install torch==1.4.0 torchvision==0.5.0 -f https://download.pytorch.org/whl/cpu/torch_stable.html

# Make sure the install eigen dir is included in CMakeLists.txt
sudo apt install libeigen3-dev

# install pbrt
git clone --recursive https://github.com/mmp/pbrt-v3.git
cd pbrt-v3
mkdir build
cd build
cmake ..
make -j4
# copy build files to diff_pd/external/pbrt_build
cp pbrt ~/Desktop/diff_pd_public/external/pbrt_build/
cp obj2pbrt ~/Desktop/diff_pd_public/external/pbrt_build/

#install ffmpeg
sudo snap install ffmpeg
