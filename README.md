# flutter-prod-kit

A small Flutter layout you can copy into an app you already created. It is not a full `flutter create` project, so the repository stays readable and does not carry generated platform folders.

```
lib/core/      Result type and a thin HTTP hook
lib/features/  one home feature
example/       a minimal entrypoint
```

```bash
flutter create my_app
cp -R lib example/lib my_app/
```

The home feature calls `ApiClient.ping` through `Result.retry`. Pass the environment with `--dart-define=ENV=dev|prod` and read `AppEnv.current`.

`Result` keeps the failure next to the value, instead of throwing on the path a screen can handle. One feature lives in one folder. `ENV` is chosen at build time, not with a second codebase.

Hire / demos: [heysony.com](https://heysony.com)

## License

MIT © Song Xiangrong
