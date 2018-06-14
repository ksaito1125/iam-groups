# IAMグループ

IAMグループを作成するテンプレートです。

IAMグループは、個別に定義したグループと[職務機能の AWS 管理ポリシー](https://docs.aws.amazon.com/ja_jp/IAM/latest/UserGuide/access_policies_job-functions.html)に定義されたグループがあります。

## Usersグループ

Usersグループは、一般ユーザのグループです。

グループに所属するユーザにユーザ自身の下記の権限を付与します。

* パスワードを変更する
* MFAデバイスを管理する
* アクセスキー、SSHキーを管理する

## 職務機能別グループ

[職務機能の AWS 管理ポリシー](https://docs.aws.amazon.com/ja_jp/IAM/latest/UserGuide/access_policies_job-functions.html)から下記のグループを定義します。
グループへの権限付与はせず、ロールの切り替えを使います。

| グループ名 | ポリシー名         |
|:-----------|--------------------|
| Admins     | 管理者             |
| Developers | 開発者パワーユーザ |

## 参考資料

* [IAM ユーザーに自分のパスワードを変更する権限を付与する](https://docs.aws.amazon.com/ja_jp/IAM/latest/UserGuide/id_credentials_passwords_enable-user-change.html)
* [ユーザーが自分の仮想 MFA デバイスのみを管理することを許可する](https://docs.aws.amazon.com/ja_jp/IAM/latest/UserGuide/id_credentials_delegate-permissions_examples.html#creds-policies-mfa-console)
* [ユーザーが自分のパスワード、アクセスキー、SSH キーを管理することを許可する](https://docs.aws.amazon.com/ja_jp/IAM/latest/UserGuide/id_credentials_delegate-permissions_examples.html#creds-policies-credentials)
* [AWS CodeCommit でアイデンティティベースのポリシー (IAM ポリシー) を使用する](https://docs.aws.amazon.com/ja_jp/codecommit/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html)
* [職務機能の AWS 管理ポリシー](https://docs.aws.amazon.com/ja_jp/IAM/latest/UserGuide/access_policies_job-functions.html)

以上
