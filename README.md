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
   git clone <your-repo-url>
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
![MinIO UI](<img width="2538" height="1334" alt="image" src="https://github.com/user-attachments/assets/fe9a94f8-74b6-4bc8-8feb-7c8c6f14aa5a" />
)

### Trino UI
![Trino UI](<img width="1510" height="1317" alt="image" src="https://github.com/user-attachments/assets/51c3f574-ecee-430a-ab31-86f447162f3b" />
)
