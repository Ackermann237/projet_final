# Étape 1 : Choisir une image de base
FROM python:3.6-alpine

# Étape 2 : Définir le répertoire de travail
WORKDIR /opt

# Étape 3 : Copier les fichiers de l'application
COPY . /opt

# Étape 4 : Installer les dépendances
RUN pip install Flask

# Étape 5 : Exposer le port utilisé par Flask
EXPOSE 8080

# Étape 6 : Définir les variables d'environnement
ENV ODOO_URL=http://odoo.com
ENV PGADMIN_URL=http://pgadmin.org

# Étape 7 : Lancer l'application Flask
ENTRYPOINT ["python"]
CMD ["app.py"]
