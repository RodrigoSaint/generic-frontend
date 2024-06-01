<script lang="ts">
	import { Button } from '$lib/components/ui/button';
	import { Input } from '$lib/components/ui/input';
	import { Label } from '$lib/components/ui/label';
	import { _ } from 'svelte-i18n';
</script>

<div class="w-full lg:grid lg:min-h-[600px] h-full lg:grid-cols-2 xl:min-h-[800px]">
	<div class="flex items-center justify-center py-12">
		<div class="mx-auto grid w-[350px] gap-6">
			<div class="grid gap-2 text-center">
				<h1 class="text-3xl font-bold">{$_('login.login')}</h1>
				<p class="text-balance text-muted-foreground">
					{$_('login.enterEmail')}
				</p>
			</div>
			<div class="grid gap-4">
				<div class="grid gap-2">
					<Label for="email">{$_('login.email')}</Label>
					<Input id="email" type="email" placeholder="m@example.com" required />
				</div>
				<div class="grid gap-2">
					<div class="flex items-center">
						<Label for="password">{$_('login.password')}</Label>
						<a href="##" class="ml-auto inline-block text-sm underline"
							>{$_('login.forgotPassword')}</a
						>
					</div>
					<Input id="password" type="password" required />
				</div>
				<Button type="submit" class="w-full">{$_('login.login')}</Button>
				<Button variant="outline" class="w-full">{$_('login.loginGoogle')}</Button>
			</div>
			<div class="mt-4 text-center text-sm">
				{$_('login.dontHaveAccount')}
				<a href="##" class="underline">{$_('login.signup')}</a>
			</div>
		</div>
	</div>
	<div class="hidden bg-muted lg:block">
		<img
			src="https://images.unsplash.com/photo-1559526324-593bc073d938?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
			alt="placeholder"
			width="1920"
			class="h-full w-full object-cover dark:brightness-[0.2] dark:grayscale"
		/>
	</div>
</div>
