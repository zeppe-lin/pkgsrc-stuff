#
# /etc/profile.d/cuda.sh: paths to cuda binaries and related envs
#

export CUDA_PATH=/opt/cuda
export PATH=$PATH:/opt/cuda/bin:/opt/cuda/integration/nsight-compute:/opt/cuda/integration/nsight-systems

# This line used to not be required but it somehow is with cuda 12.3.
# We reported this as a bug to NVIDIA. For now, this seems like a viable
# workaround.
export NVCC_PREPEND_FLAGS='-ccbin /opt/cuda/bin'

# End of file.
