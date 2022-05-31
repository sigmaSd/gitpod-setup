sudo apt update -y
sudo apt upgrade -y
wget https://github.com/rui314/mold/releases/download/v1.2.1/mold-1.2.1-x86_64-linux.tar.gz
tar -xvzf mold-1.2.1-x86_64-linux.tar.gz
mv mold-1.2.1-x86_64-linux mold
mkdir .cargo
echo '[target.x86_64-unknown-linux-gnu]
linker = "clang"
rustflags = ["-C", "link-arg=-fuse-ld=/workspace/gitpod/mold"]' >.cargo/config.toml
