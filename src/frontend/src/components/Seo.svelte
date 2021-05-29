<script>
  import SvelteSeo from "svelte-seo";

  const META = {
    TITLE: "DeepMetal - When heavy metal meets data science",
    DESCRIPTION: "Discover my NLP project in the world of heavy metal and compose your own lyrics with the help of a GPT-2 generative model.",
    COVER_IMG: { URL: "https://www.deepmetal.ai/static/images/cover.png", ALT: "deepmetal.ai" },
    URL: "https://www.deepmetal.ai"
  }
</script>

<!-- SEO meta tags -->
<SvelteSeo
  title={META.TITLE}
  description={META.DESCRIPTION}
  canonical={META.URL}
  openGraph={{
    title: META.TITLE,
    description: META.DESCRIPTION,
    url: META.URL,
    type: 'website',
    images: [
      {
        url: META.COVER_IMG.URL,
        alt: META.COVER_IMG.ALT,
      }
    ],
    url: META.URL,
  }}
  twitter={{
    site: "@LBallore",
    title: META.TITLE,
    description: META.DESCRIPTION,
    image: META.COVER_IMG.URL,
    imageAlt: META.COVER_IMG.ALT,
  }}
/>
