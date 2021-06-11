# Isolating Rails blobs in subfolders

This example application is configured to store uploaded ActiveStorage files into subfolders based on a deployment environment variable, such as `$HEROKU_APP_NAME`.

![twin-apps](https://p198.p4.n0.cdn.getcloudapp.com/items/rRujlBOb/5a9ba7e1-1dbb-409a-bd1f-1990296fe69b.png?v=d245faad10c9d17bd03fc31cd01eef3c)

I've deployed two demonstration apps that show the internal key to demonstrate that the images are stored in different subfolders:

* <https://subfolder-demo-1111.herokuapp.com/>
* <https://subfolder-demo-2222.herokuapp.com/>

[Read me on the blog post](https://dev.to/drnic/isolating-rails-blobs-in-subfolders-k08-temp-slug-4026714?preview=eb80c5fb6127886bf89a4ed50d7be5169d5f5a82c88ef480fd183f2411e496f93bed920d18c75b7d6934bcf4c1430a3a30ce49bae8f0da16fb6ebf40).
