{% set packages_lookup={
	'Debian':{
	  'apache': 'apache2'
	},
	'RedHat':{
	'apache': 'htpd'
	}
} %}

{% set current_os= grains['os_family'] %}
{% set apache= packages_lookup[current_os] %}


}

apache: {{apache}}