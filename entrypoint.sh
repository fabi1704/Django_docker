#!/bin/sh
set -e

echo "⏳ Waiting for database..."
while ! nc -z ${DB_HOST} ${DB_PORT}; do
  sleep 1
done

echo "🔄 Applying database migrations..."
python manage.py migrate --noinput

echo "📦 Collecting static files..."
python manage.py collectstatic --noinput

# Par défaut : environnement de production
# Si mode local cad développement alors dans bash ecrire : docker run -e DJANGO_ENV=development ...
# Ou dans docker-compose.yml environment:
#                 DJANGO_ENV=developpement
# Si mode production (docker-hub et railway), commenter la ligne ci-dessus
if [ "$DJANGO_ENV" = "development" ]; then
  echo "👨‍💻 Starting Django development server..."
  exec python manage.py runserver 0.0.0.0:8000
else
  echo "🚀 Starting Gunicorn for production..."
  exec gunicorn studiprojectparis.wsgi:application --bind 0.0.0.0:8000
fi
