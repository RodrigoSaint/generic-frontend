<script>
	import Header from '@/lib/components/common/header.svelte';
	import '$lib/hooks/translation';
	import '../app.css';
</script>

<Header />
<div style="height: calc(100vh - 50px);">
	<slot></slot>
</div>
