<script lang="ts" context="module">
	export interface Money {
		value: number;
		currency: 'EUR' | 'USD' | 'BRL';
	}

	export interface Plan {
		title: string;
		description: string;
		features: string[];
		price?: Money;
		isMostPopular?: boolean;
	}
</script>

<script lang="ts">
	import { cn } from '@/lib/utils';
	import { Badge } from '../ui/badge';
	import { Button } from '../ui/button';
	import {
		Card,
		CardContent,
		CardDescription,
		CardFooter,
		CardHeader,
		CardTitle
	} from '../ui/card';
	import { CheckOutline } from 'flowbite-svelte-icons';
	import { _ } from 'svelte-i18n';

	export let plan: Plan;
</script>

<Card class={cn(plan.isMostPopular ? 'border-primary' : '')}>
	<CardHeader class="text-center pb-2">
		{#if plan.isMostPopular}
			<Badge class="uppercase w-max self-center mb-3">{$_('common.plans.mostPopular')}</Badge>
		{/if}

		<CardTitle class="mb-7">{$_(plan.title)}</CardTitle>
		<span class="font-bold text-5xl">{plan.price?.value ? `£${plan.price?.value}` : 'Free'}</span>
	</CardHeader>
	<CardDescription class="text-center">{$_(plan.description)}</CardDescription>
	<CardContent>
		<ul class="mt-7 space-y-2.5 text-sm">
			{#each plan.features as feature}
				<li class="flex space-x-2">
					<CheckOutline class="flex-shrink-0 mt-0.5 h-4 w-4" />
					<span class="text-muted-foreground">{feature}</span>
				</li>
			{/each}
		</ul>
	</CardContent>
	<CardFooter>
		<Button class="w-full" variant={plan.isMostPopular ? 'default' : 'outline'}
			>{$_('common.plans.signup')}</Button
		>
	</CardFooter>
</Card>
