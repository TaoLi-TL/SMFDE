# Real-World Nighttime Dehazing via Score-Guided Multi-Scale Fusion and Dual-Channel Enhancement

This is the official repository for the paper "Real-World Nighttime Dehazing via Score-Guided Multi-Scale Fusion and Dual-Channel Enhancement".

## Usage

1. Place your test images in the `input_images` folder
2. Run the `smfde_demo.m` file in MATLAB
3. The dehazing results will be generated in the `output_images` folder

## Quick Start

```matlab
% Simply run the demo script
smfde_demo
```

## Repository Structure

```
SMFDE/
├── input_images/          # Place your test images here
├── output_images/         # Dehazing results will be saved here
├── smfde_demo.m          # Main demo script
├── *.p                   # Compiled MATLAB functions
└── README.md             # This file
```

## Requirements

- MATLAB R2021b
- NSST Toolbox (for image processing)
- Support Function

## Note

The core algorithms are provided as compiled `.p` files to protect the intellectual property while allowing users to reproduce the results presented in the paper.



## Citation

If you use this code in your research, please cite our paper:

```bibtex
@article{li2025real,
  title={Real-World Nighttime Dehazing via Score-Guided Multi-Scale Fusion and Dual-Channel Enhancement},
  author={Li, Tao and Liu, Yun and Luo, Shirui and Ren, Wenqi and Lin, Weisi},
  journal={IEEE Transactions on Circuits and Systems for Video Technology},
  year={2025},
  publisher={IEEE}
}
```

## Contact

For any questions or issues, please contact: lt3088919588@email.swu.edu.cn
