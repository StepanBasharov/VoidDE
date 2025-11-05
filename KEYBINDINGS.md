# Горячие клавиши Neovim 🔥

## 🛠️ Pentest Utils (Новое!)

| Клавиша | Описание |
|---------|----------|
| `<leader>xe` | chmod +x (сделать исполняемым) |
| `<leader>xp` | Запустить Python скрипт |
| `<leader>xb` | Запустить Bash скрипт |
| `<leader>be` | Base64 Encode (visual mode) |
| `<leader>bd` | Base64 Decode (visual mode) |
| `<leader>hm` | MD5 Hash |
| `<leader>hs` | SHA256 Hash |

## Горячие клавиши Neovim

## Git (gitsigns)

| Клавиша | Описание |
|---------|----------|
| `]c` | Следующее изменение |
| `[c` | Предыдущее изменение |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage весь буфер |
| `<leader>hR` | Reset весь буфер |
| `<leader>hp` | Просмотр изменения |
| `<leader>hb` | Git blame строки |
| `<leader>tb` | Переключить blame |
| `<leader>hd` | Diff текущего файла |
| `<leader>td` | Показать удалённые строки |

## Форматирование

| Клавиша | Описание |
|---------|----------|
| `<leader>fm` | Форматировать файл |
| При сохранении | Автоформатирование |

## Trouble (Диагностика)

| Клавиша | Описание |
|---------|----------|
| `<leader>xx` | Все диагностики проекта |
| `<leader>xX` | Диагностики текущего буфера |
| `<leader>cs` | Символы |
| `<leader>cl` | LSP определения/ссылки |
| `<leader>xL` | Location List |
| `<leader>xQ` | Quickfix List |

## Surround (Работа со скобками)

| Клавиша | Описание |
|---------|----------|
| `ys{motion}{char}` | Добавить окружение |
| `ds{char}` | Удалить окружение |
| `cs{old}{new}` | Изменить окружение |

**Примеры:**
- `ysiw"` - окружить слово кавычками
- `yss)` - окружить строку скобками
- `ds"` - удалить кавычки
- `cs"'` - заменить двойные кавычки на одинарные

## LSP

| Клавиша | Описание |
|---------|----------|
| `gd` | Go to Definition |
| `gD` | Go to Declaration |
| `gi` | Go to Implementation |
| `gr` | Go to References |
| `K` | Hover Info |
| `<C-k>` | Signature Help |
| `<leader>rn` | Rename |
| `<leader>ca` | Code Action |

## Debug (DAP)

| Клавиша | Описание |
|---------|----------|
| `<leader>dc` | Continue/Start |
| `<leader>db` | Toggle Breakpoint |
| `<leader>dB` | Conditional Breakpoint |
| `<leader>dn` | Step Over |
| `<leader>di` | Step Into |
| `<leader>do` | Step Out |
| `<leader>dr` | Open REPL |
| `<leader>du` | Toggle UI |
| `<leader>dq` | Terminate |

## Telescope

| Клавиша | Описание |
|---------|----------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Find help |
| `<leader>fd` | Find diagnostics |

