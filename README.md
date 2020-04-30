# Lock Screen Without Button

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](./LICENSE)

Simple tweak to lock Screen without button, just double tap from Home  
Super lightweight. No battery affect. Just install, no preferences

## Features

- Lock Screen without button, just double tap from Home
- Support iOS 12 - 13

## Cydia Repo

[https://haoict.github.io/cydia](https://haoict.github.io/cydia)

## Screenshot

N/A

## Building

[Theos](https://github.com/theos/theos) required.

```bash
make do
```

## Contributors

Contributions of any kind welcome!

## License

Licensed under the [GPLv3 License](./LICENSE), Copyright © 2020-present Hao Nguyen <hao.ict56@gmail.com>

## [Note] Advanced thingy for development

<details>
  <summary>Click to expand!</summary>
  
  Add your device IP in `~/.bash_profile` or in project's `Makefile` for faster deployment
  ```base
  THEOS_DEVICE_IP = 192.168.1.21
  ```

Add SSH key for target deploy device so you don't have to enter ssh root password every time

```bash
cat ~/.ssh/id_rsa.pub | ssh -p 22 root@192.168.1.21 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
```

Build the final package

```bash
FINALPACKAGE=1 make package
```

</details>
