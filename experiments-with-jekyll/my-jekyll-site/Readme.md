# References
-[**Meet Jekyll - The Static Site Generator**](https://www.youtube.com/watch?v=F8iOU1ci19Q&t=203s)

# Some useful commands to manage this project

```
docker-compose down
```

```
Remove-Item -Recurse -Force .\_site, .\.jekyll-cache
```

```
docker-compose up --build
```

## Combined command to restart

```
docker-compose down; Remove-Item -Recurse -Force .\_site, .\.jekyll-cache ; docker-compose up --build
```


# A good looking site example with Jekyll
- [**https://github.com/timothystewart6/TSdreamer.github.io**](https://github.com/timothystewart6/TSdreamer.github.io)
- [**https://github.com/cotes2020/jekyll-theme-chirpy#documentation**](https://github.com/cotes2020/jekyll-theme-chirpy#documentation)