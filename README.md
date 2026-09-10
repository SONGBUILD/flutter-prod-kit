# flutter-prod-kit

A **small Flutter layout**, not a kitchen-sink template.

```
lib/core/     result type, http client hook
lib/features/ one sample feature (home)
```

Copy `lib/` into a real `flutter create` app when you have the SDK. This repo stays readable on GitHub without shipping 200 generated files.

## Flavor

Use `--dart-define=ENV=dev|prod` and read `AppEnv.current`.

## License

MIT © Song Xiangrong
