#!/bin/bash
# Простейший тест: проверяем, что есть хотя бы один конфиг в configs/
set -e

if [ -z "$(ls configs/*.conf 2>/dev/null)" ]; then
  echo "❌ Нет конфигов в папке configs/"
  exit 1
fi

echo "✅ Конфиги найдены:"
ls configs/*.conf
exit 0
