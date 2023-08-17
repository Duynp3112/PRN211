var builder = WebApplication.CreateBuilder(args);
builder.Services.AddControllersWithViews(); //Web hoat dong tren co so tu controller sang View
builder.Services.AddSession();
var app = builder.Build();
app.UseSession();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=HomePage}"
    );
app.UseStaticFiles();
app.Run();