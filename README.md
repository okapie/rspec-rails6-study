# rspec-rails6-study

### Built in matchers

| 機能 / メソッド | 説明 | 実装例 |
| :--- | :--- | :--- |
| `be_valid` | 渡した Model のインスタンスの `valid?` メソッドが `true` の場合にパスする。 | [c1e7f16](https://github.com/okapie/rspec-rails6-study/commit/c1e7f16430a1583a40b824db0bce8e78e7cb4d69) |
| `expect(result).to eq(expected)` | 同値かどうか判定。 | [38df87f](https://github.com/okapie/rspec-rails6-study/commit/38df87fc717a5b524ab81ccaea4e30ae39d935a3) |
| `expect(result).not_to` | 「〜ではない」ことを検証する。<br>`eq` などのマッチャとワンセットで使用する。 | [57d5552](https://github.com/okapie/rspec-rails6-study/commit/57d55520b291ca5bfbcd5f8ed435227f696ae193) |
| `raise_error` | 「エラーが起きること」を検証する。 | [75df746](https://github.com/okapie/rspec-rails6-study/commit/75df746685278db91b111c55766ed55819b96a7f) |

### Example groups

| 機能 / メソッド | 説明 | 実装例 |
| :--- | :--- | :--- |
| `it` | 単位 (`example`) をまとめる役割を担う。<br>引数には、テスト対象のメソッドが行う振る舞いを記述する。 | [c2604cd](https://github.com/okapie/rspec-rails6-study/commit/c2604cdaad5c5c35a7632c37a163ec6ef0feeda8) |
| `shared_context` | `example` グループの中で評価されるブロックを定義する。<br>`shared_context` で共通化した処理を、 `include_context` によって呼び出す。 | [dd7035b](https://github.com/okapie/rspec-rails6-study/commit/dd7035b3a730937a15988fc478e23ba9e3f62f82) |
| `shared_examples` | `it` 内の処理を共通化する。<br>`it_behaves_like` により呼び出し可能。 | [66e4728](https://github.com/okapie/rspec-rails6-study/commit/66e472870e42eca0fc13540181614e49e222fbb0) |

### Hooks

| 機能 / メソッド | 説明 | 実装例 |
| :--- | :--- | :--- |
| `before` | `describe` や `context` ブロック内で使用し、<br>各テスト実行前に共通インスタンス変数をセットアップ。 | [dd7035b](https://github.com/okapie/rspec-rails6-study/commit/dd7035b3a730937a15988fc478e23ba9e3f62f82) |

### Helper methods

| 機能 / メソッド | 説明 | 実装例 |
| :--- | :--- | :--- |
| `let` | メモ化のためのヘルパーメソッド。<br>遅延初期化される特性がある。 | [326708f](https://github.com/okapie/rspec-rails6-study/commit/326708faba6cd8657769b60edaa0489caba009a0) |
| `let!` | メモ化のためのヘルパーメソッド。<br>`example` の前処理として実行される。 | [98926b2](https://github.com/okapie/rspec-rails6-study/commit/98926b2c34d9ea7d6e32bba6a4ff6bd4080b0eaa) |

### Metadata

| 機能 / メソッド | 説明 | 実装例 |
| :--- | :--- | :--- |
| `described_class` | `example` から `ClassName` を参照するために使用する。 | [f6ce8d9](https://github.com/okapie/rspec-rails6-study/commit/f6ce8d9fdf4c99fde6ccecb4617796494bd1238a) |

### Subject

#### ■ Explicit subject

| 機能 / メソッド | 説明 | 実装例 |
| :--- | :--- | :--- |
| `subject` | `expect` の引数になるものを記述することで、<br>テスト対象を明確にしてからテスト実行出来る。 | [3b8d925](https://github.com/okapie/rspec-rails6-study/commit/3b8d9254eedfdd563fab254748b4b28f47e08e89) |
