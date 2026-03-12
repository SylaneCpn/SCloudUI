# SCloud

User Interface for the SCloud project

## Quick start

To build the project, clone the repository and [install the flutter sdk 
for your system](https://docs.flutter.dev/get-started/install?_gl=1*10smu01*_ga*OTMwNDgxOTc5LjE3MzA2NzIyNzA.*_ga_04YGWK0175*czE3NDcyNTA0MDQkbzEzMCRnMCR0MTc0NzI1MDQwNCRqMCRsMCRoMA..).

Then build the project for your system by running :

```bash
flutter run
```

You should have a working app.

This should be enough for a quick launch.
For more feature, please check-out the [Flutter documentation](https://docs.flutter.dev/).

# Linux 

On Linux you'll need the `libmpv` dependencies :

```bash
sudo apt install libmpv2
```

Once you've got it,you'll need to extract the cantent of the archive in the directory of your choice.

```bash
mv build-linux.tar.gz /path/to/my/dir/build-linux.tar.gz
cd /path/to/my/dir
tar -xf build-linux.tar.gz
```

Then you should be good to go.

To execute the app just find the binairy in the `bundle` directory and the app should be executing.