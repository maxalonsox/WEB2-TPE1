{include 'templates/header.tpl'}
{include 'templates/nav.tpl'}

    <div class='containerBgHome'>
        <div class='headerItems'>
            <h1>Productos</h1>
        </div>
        <div class='containerAllItems'>
        {foreach $products as $product}
            {foreach $marcas as $marca }
                {if $product->id_marca_fk == $marca->id} 
                    {$marcaDelProduct = $marca}
                {/if}
            {/foreach}
            {$precio = $product->precioBase + $marcaDelProduct->precioAdicional}
            <div class='containerProduct'>
                <img src='{$product->imagen}' class='imgProduct' alt=''>
                <h2>{$product->nombre}</h2>
                <h3>({$marcaDelProduct->nombre})</h3>
                <h5>({$product->cantidad} ml)</h5>
                <div class='containerInfoPriceProduct'>
                    <a class='linkNoDecoration' href='productos/{$product->nombre}'>INFO</a>
                    <div class='containerPriceProduct'>
                        <p>${$precio}</p>
                    </div>
                </div>
            </div>
        {/foreach}
        </div>
    </div>

{include 'templates/footer.tpl'}