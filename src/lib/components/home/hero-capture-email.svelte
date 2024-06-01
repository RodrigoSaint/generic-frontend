<script>
	import { Button } from '@/lib/components/ui/button';
	import { Input } from '@/lib/components/ui/input';
	import { Label } from '@/lib/components/ui/label';

	import { _ } from 'svelte-i18n';
</script>

<div class="container py-24 lg:py-32">
	<div class="grid lg:grid-cols-7 lg:gap-x-8 xl:gap-x-12 lg:items-center">
		<div class="lg:col-span-3">
			<h1 class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">
				{$_('home.hero.captureEmail.header')}
			</h1>
			<p class="mt-3 text-xl text-muted-foreground">
				{$_('home.hero.captureEmail.description')}
			</p>
			<div class="mt-5 lg:mt-8 flex flex-col sm:items-center gap-2 sm:flex-row sm:gap-3">
				<div class="w-full max-w-lg lg:w-auto">
					<Label class="sr-only">Search</Label>
					<Input placeholder="Enter work email" type="email" />
				</div>
				<Button class="w-min">
					{$_('home.hero.captureEmail.cta')}
				</Button>
			</div>
		</div>
		<div class="lg:col-span-4 mt-10 lg:mt-0">
			<img class="w-full rounded-xl" src="https://placehold.co/700x540" alt="Image Description" />
		</div>
	</div>
</div>
