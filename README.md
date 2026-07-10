# Mini-Lakehouse с Trino, Iceberg, PostgreSQL и MinIO

## Схема сервисов

| Сервис | Порт | Назначение |
|--------|------|-----------|
| MinIO API | 9000 | S3-совместимое хранилище |
| MinIO UI | 9001 | Веб-консоль MinIO |
| PostgreSQL | 5432 | Метакаталог Iceberg |
| Trino | 8080 | SQL-движок |

## Запуск

1. Клонируйте репозиторий:
   ```bash
   git clone <[your-repo-url](https://github.com/Paliadium/mini-lakehouse)>
   cd mini-lakehouse
   ```

2. Запустите все сервисы:
   ```bash
   docker compose up -d
   ```

3. Проверьте состояние:
   ```bash
   ./healthcheck/check_services.sh
   ```

4. Выполните SQL-скрипты через Trino CLI:
   ```bash
   docker exec -it trino trino --catalog iceberg --schema test_schema
   ```

## Скриншоты

### MinIO UI
![MinIO UI](miniIO.bmp
)

### Trino UI
![Trino UI](trino.bmp
)
