
show = (args...) -> console.log.apply console, args
delay = (t, f) -> setTimeout f, t
query = (sign) -> document.querySelector sign
all = (sign) -> document.querySelectorAll sign

window.onload = ->
  body = document.body
  nav = all '.title'

  now = (n) ->
    if n? then window.scrollTo 0,n
    else window.pageYOffset

  for elem in nav
    do (elem) ->
      elem.onclick = (e) ->
        top = elem.parentNode.offsetTop

        do scoll = ->
          delay 10, ->
            if (Math.abs (top - now())) >= 300
              # show 'scrollTop', top, now()
              if top > now()
                now (now() + 300)
                do scoll if top > now()
              else if top < now()
                now (now() - 300)
                do scoll if top < now()
            else now top

      elem.parentNode.onmouseover = ->
        query('#bg').innerText = elem.innerText
        query('#bg').textContent = elem.textContent