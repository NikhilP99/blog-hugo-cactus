---
title: "npm init"
date: 2021-05-28T19:33:47+05:30
tags:
    - Hugo
categories:
    - tech
---


## console.log("Hello World!");

Finally, after a few failed attempts and a lot of procrastination, the blog is live. I tried this with other platforms like Medium and Hacker Noon, but that just wasn't feeling right. It was time to ditch CMS and take control.

## Static Site Generators

What is a Static Site Generator(SSG)? Simply put, it is a tool that generates static websites from the given content. It takes markdown files as input and compiles them into a standard HTML, CSS, JS static website using template engines. This static website can be directly served with Nginx, GitHub Pages or any HTTP server. I am using GitHub Pages to host this blog.

There are a LOT of SSGs out there. I really didn't want to get into [Gatsby](https://www.gatsbyjs.com/) or [Next.js](https://nextjs.org/). They are a bit too much for something as simple as a blog. I considered [Jekyll](https://jekyllrb.com/) for a while but eventually, it came down to either [Hugo](https://gohugo.io/) or [Zola](https://www.getzola.org/). After head scratching for a while, I decided to use Hugo and [this theme](https://github.com/monkeyWzr/hugo-theme-cactus) with slight modifications. 

## Why Hugo?

Now, this was a tough choice. Hugo is written in Go and Zola in Rust. Both are super easy to set up locally. The directory and code structure in Zola is much more intuitive and forgiving than the alternative. In terms of ease of modification, it is far better than Hugo. Quoting Zola's maintainer, "it personally drives me insane, to the point of writing my own template engine and static site generator".

What made me choose Hugo is the sheer number of available themes and plugins. Granted that creating new themes in Hugo (or modifying existing ones) is a headache, however, choosing Zola most certainly meant picking up a minimal theme and adding a ton of custom CSS. And I'm no CSS guru, not even close. So until I've faced my fear of CSS, Hugo will stay. As an added benefit, Hugo's [LiveReload](https://gohugo.io/getting-started/usage/#livereload) is pretty cool.


Currently, more modifications and features are underway. Now that the blog is up and running, all that's left is to be consistent and have fun along the way. See ya!