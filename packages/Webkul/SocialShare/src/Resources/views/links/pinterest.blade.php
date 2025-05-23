@php
    $productBaseImage = product_image()->getProductBaseImage($product);

    $details = [
        'url'         => route('shop.product_or_category.index', $product->url_key),
        'media'       => $productBaseImage['medium_image_url'] ?: asset('vendor/Webkul/ui/assets/images/product/meduim-product-placeholder.png'),
        'description' => $message,
    ];

    $pinterestURL = 'https://pinterest.com/pin/create/button/?' . http_build_query($details);
@endphp

<v-pinterest-share></v-pinterest-share>

@push('scripts')
    <script
        type="text/x-template"
        id="v-pinterest-share-template"
    >
        <li class="transition-all hover:opacity-[0.8]">
            <a 
                :href="shareUrl" 
                @click="openSharePopup"
                aria-label="Pinterest"
                role="button"
                tabindex="0"
            >
                @include('social_share::icons.pinterest')
            </a>
        </li>
    </script>

    <script type="module">
        app.component('v-pinterest-share', {
            template: '#v-pinterest-share-template',

            data() {
                return {
                    shareUrl: '{{ $pinterestURL }}'
                }
            },

            methods: {
                openSharePopup() {
                    window.open(this.shareUrl, '_blank', 'resizable=yes,top=500,left=500,width=500,height=500')
                }
            }
        });
    </script>
@endpush
