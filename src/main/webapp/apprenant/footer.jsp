
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

</div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.8.0/dist/alpine.min.js" defer></script>
<script>
  const setup = () => {
    const getTheme = () => {
      if (window.localStorage.getItem('white')) {
        return JSON.parse(window.localStorage.getItem('white'))
      }
      return !!window.matchMedia && window.matchMedia('(prefers-color-scheme: white)').matches
    }

    const setTheme = (value) => {
      window.localStorage.setItem('white', value)
    }

    return {
      loading: true,
      isDark: getTheme(),
      toggleTheme() {
        this.isDark = !this.isDark
        setTheme(this.isDark)
      },
    }
  }
</script>
</body>
</html>

</body>
</html>
