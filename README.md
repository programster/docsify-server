Docsify Server
==============

## Getting Started

After cloning this repo, create a `README.md` file in the `/docs` folder. This will be your site's entrypoint/home-page.

Then build your docsify docker image by running:

```bash
docker-compose build
```

... then run the server with:

```bash
docker-compose up
```

You should now be able to see the a docsify site showing your README.md file, by going to the IP address or hostname of
the server in your browser.


## Customizations
Be sure to read the [docsify docs](https://docsify.js.org/#/?id=docsifyS) to see how you can customize your site, such as by:

* choosing a different theme.
* adding syntax highlighting for more languages
* enable the navbar.
* customize the sidebar
* adding plugins.
* setting a cover page.
