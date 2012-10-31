
show = (args...) -> console.log.apply console, args
delay = (t, f) -> setTimeout f, t
query = (sign) -> document.querySelector sign
all = (sign) -> document.querySelectorAll sign

window.onload = ->
  body = document.body
  nav = all '.title'

  for elem in nav
    do (elem) ->
      elem.onclick = (e) ->
        top = elem.parentNode.offsetTop
        now = (n) ->
          if n? then body.scrollTop = n
          else body.scrollTop

        do scoll = ->
          delay 10, ->
            if (Math.abs (top - now())) >= 300
              show 'scrollTop'
              if top > now()
                now (now() + 300)
                do scoll if top > now()
              else if top < now()
                now (now() - 300)
                do scoll if top < now()
            else now top

      elem.parentNode.onmouseover = ->
        query('#bg').innerText = elem.innerText