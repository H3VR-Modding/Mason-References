# Mason-References
This repository simply stores the DLL references required by [Mason](https://github.com/H3VR-Modding/Mason) to run.

## Usage
Assuming you have cloned this repository to `references` within your Mason project, place the following properties in your `config.yaml`:
```yaml
directories:
  bepinex: references/bepinex
  managed: references/managed
```

## Contributing
Ensure you have the .NET SDK installed. Then run `dotnet tool restore` in this directory to install
[DeepStrip](https://github.com/ash-hat/DeepStrip). Once DeepStrip is installed, copy the original assemblies over the reference assemblies
and run `strip.sh`.

If you cannot do the above tasks, opening an issue or messaging me is a perfectly fine and a much easier alternative.