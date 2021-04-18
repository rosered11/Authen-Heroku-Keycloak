# Authen-Heroku-Keycloak
Implement authentication on Heroku and use Keycloak

## Guide

### Heroku

When you deploy app on Heroku. you should scal dynose for running your application. If you not setting it. Your application will be not running.

This is example command for scale dynose
```
heroku ps:scale web=1
```
**Error SSL off**

If you cann't connect to postgresql on Heroku. you should set connection string for require ssl

Example connection string

`Server=[servername];Port=[port];User Id=[username];Password=[password];Database=[databasename];sslmode=Require;Trust Server Certificate=true`

## Reference 

- [Authentication](https://github.com/rosered11/authentication)

- [Deploying .NET Core to Heroku](https://dev.to/alrobilliard/deploying-net-core-to-heroku-1lfe)

- [Deploy โปรเจค ASP.NET Core บน Heroku ด้วย Terraform](https://wk-j.medium.com/%E0%B8%A7%E0%B8%B4%E0%B8%98%E0%B8%B5-deploy-%E0%B9%82%E0%B8%9B%E0%B8%A3%E0%B9%80%E0%B8%88%E0%B8%84-asp-net-core-%E0%B8%9A%E0%B8%99-heroku-%E0%B8%94%E0%B9%89%E0%B8%A7%E0%B8%A2-terraform-1d0f47bf430f)

- [Deploy Your .NET Core 3.1 Application to Heroku With Docker](https://medium.com/swlh/deploy-your-net-core-3-1-application-to-heroku-with-docker-eb8c96948d32)

- [CertificateUnknown error when connecting to Heroku Postgres database](https://stackoverflow.com/questions/37996153/certificateunknown-error-when-connecting-to-heroku-postgres-database)

- [Deploy to Heroku with PostgreSQL](https://github.com/mattwelke/little-aspnetcore-book/blob/master/chapters/deploy-the-application/deploy-to-heroku-with-postgresql.md)