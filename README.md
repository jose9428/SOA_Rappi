![Captura de pantalla (512)](https://user-images.githubusercontent.com/76067475/142832587-4f57da81-1330-4eb7-a751-bbcb750d7ee9.png)
![Captura de pantalla (513)](https://user-images.githubusercontent.com/76067475/142832597-94717b24-1e12-41c7-8fc7-a58bb3eb76f7.png)
![Captura de pantalla (514)](https://user-images.githubusercontent.com/76067475/142832609-ee19b7fd-e64f-4218-b2ae-342c44a04781.png)

![Captura de pantalla (515)](https://user-images.githubusercontent.com/76067475/142832616-7aec2645-ffb2-4bc9-80fa-3c3f55e5529a.png)

LEER

#Instalar en consola de administraccion de paquetes

1. Install-Package Microsoft.EntityFrameworkCore -Version 3.0.0
2. Install-Package Microsoft.EntityFrameworkCore.SqlServer -Version 3.0.0
3. Install-Package Microsoft.EntityFrameworkCore.Tools -Version 3.0.0
4. scaffold-DbContext "Data source=(local); Initial Catalog=bd_Rappi; user id=sa; password=castro;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models


#Agregar la siguiente linea en Startup.cs /  ConfigureServices

5. services.AddDbContext<Models.bdCreanaContext>();


public void ConfigureServices(IServiceCollection services)
{
    services.AddCors(o => o.AddPolicy("MyPolicy", builder =>
    {
        builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
    }));

    services.AddDbContext<Models.bd_RappiContext>();
    services.AddControllers();
}

#Agregar en Configure
7.  app.UseCors("MyPolicy");

![image](https://user-images.githubusercontent.com/76067475/142833465-a7f5b39b-d67d-4aa4-97ba-69d35abcece4.png)
![image](https://user-images.githubusercontent.com/76067475/142833534-0ebbdacf-34fa-43c3-a123-9c6b45c01a29.png)
