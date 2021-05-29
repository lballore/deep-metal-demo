<script>
  import Seo from "./components/Seo.svelte";
  import Navbar from "./components/Navbar.svelte";
  import Banner from "./components/Banner.svelte";
  import Project from "./components/Project.svelte";
  import Demo from "./components/Demo.svelte";
  import About from "./components/About.svelte";
  import Social from "./components/Social.svelte";
  import Footer from "./components/Footer.svelte";
</script>

<svelte:head>
  <!-- Meta tags for SEO -->
  <Seo />
</svelte:head>

<!-- Navbar -->
<Navbar />
<!-- Banner -->
<Banner />
<!-- Project -->
<Project />
<!-- Demo -->
<Demo />
<!-- About me -->
<About />
<!-- Social Media -->
<Social />
<!-- Footer -->
<Footer />
