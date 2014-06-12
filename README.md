packer template CentOS 6.5 with Mroonga
===

CentOS 6.5 x86_64 packer template with Mroonga.

This packer template is originally based on [futoase/packer-template](https://github.com/futoase/packer-template)'s CentOS-6.5-x86_64.

## Usage

### build VagrantBox(optional)

```bash
$ packer build -only=virtualbox-iso template.json
```

### using VagrantBox

```bash
$ git clone https://github.com/cosmo0920/packer-centos65-with-mroonga centos65_mroonga
$ cd centos65_mroonga
$ vagrant up
```
