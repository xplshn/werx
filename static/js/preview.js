<script>
document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('.prev-text').forEach(el => {
    const url = el.dataset.url;
    if (!url) return;

    if (!el.closest('.prev-iframe')) {
      fetch(url).then(resp => resp.text())
        .then(html => {
          const doc = new DOMParser().parseFromString(html, 'text/html');
          const meta = doc.querySelector('meta[name="description"]');
          if (meta && meta.content) el.textContent = meta.content;
        })
        .catch(() => { /* fallback: IMG+TEXT stays */ });
    }
  });
});
</script>
