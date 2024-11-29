(function () {
  // const endpoint = 'http://localhost:5000';
  const endpoint = "http://_API_ADDRESS_:5000";

  const getProducts = async () => {
    try {
      const url = `${endpoint}/products`;
      const response = await fetch(url);
      const products = await response.json();
      return products;
    } catch {
      return undefined;
    }
  };

  const productImg = () => {
    return `
            <?xml version="1.0" encoding="iso-8859-1"?>
            <!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
                viewBox="0 0 512 512" xml:space="preserve">
            <polygon points="232.989,109.303 232.989,74.787 204.225,74.787 204.225,63.281 221.483,63.281 221.483,28.764 204.225,28.764 
                204.225,0 169.708,0 169.708,28.764 152.449,28.764 152.449,63.281 169.708,63.281 169.708,74.787 140.944,74.787 140.944,109.303 
                169.708,109.303 169.708,120.809 152.449,120.809 152.449,155.326 169.708,155.326 169.708,299.146 204.225,299.146 
                204.225,155.326 221.483,155.326 221.483,120.809 204.225,120.809 204.225,109.303 "/>
            <rect x="273.258" y="254.274" style="fill:#FFE98F;" width="103.551" height="43.146"/>
            <rect x="325.034" y="254.274" style="fill:#FFC170;" width="51.775" height="43.146"/>
            <g>
                <rect x="273.258" y="201.348" style="fill:#A2001D;" width="103.551" height="57.528"/>
                <rect x="273.258" y="293.393" style="fill:#A2001D;" width="103.551" height="218.607"/>
            </g>
            <g>
                <rect x="325.034" y="201.348" style="fill:#6C0014;" width="51.775" height="57.528"/>
                <rect x="325.034" y="293.393" style="fill:#6C0014;" width="51.775" height="218.607"/>
            </g>
            <rect x="135.191" y="311.802" style="fill:#FFE98F;" width="103.551" height="43.146"/>
            <rect x="186.966" y="311.802" style="fill:#FFC170;" width="51.775" height="43.146"/>
            <g>
                <rect x="135.191" y="258.876" style="fill:#A2001D;" width="103.551" height="57.528"/>
                <rect x="135.191" y="350.921" style="fill:#A2001D;" width="103.551" height="161.079"/>
            </g>
            <g>
                <rect x="186.966" y="258.876" style="fill:#6C0014;" width="51.775" height="57.528"/>
                <rect x="186.966" y="350.921" style="fill:#6C0014;" width="51.775" height="161.079"/>
            </g>
            </svg>
        `;
  };

  const productImgVariant = () => {
    return `
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" viewBox="0 0 512 512" xml:space="preserve">
                <path style="fill:#A2001D;" d="M482.327,77.913l-8.617-15.51l-15.288,9.008c-2.12,1.249-52.429,31.207-96.891,84.56  c-25.821,30.984-44.906,61.954-61.747,89.279c-20.927,33.956-38.999,63.282-62.82,80.873c-10.152,7.497-19.508,10.335-28.596,8.675  c-17.366-3.172-29.418-21.556-29.487-21.662l-9.462-15.021L10.945,403.763c-9.062,6.042-13.03,17.105-9.873,27.529  c3.157,10.424,12.594,17.427,23.485,17.427H274.33c32.316,0,61.817-19.012,75.156-48.437c11.555-25.485,23.145-48.919,34.451-69.65  c19.516-35.786,39.227-48.37,52.345-52.63v171.594h34.598V269.452c8.204-6.697,22.571-20.887,32.068-44.071  C524.454,172.885,503.604,116.212,482.327,77.913z"/>
                <path style="fill:#6C0014;" d="M482.327,77.913l-8.617-15.51l-15.288,9.008c-2.12,1.249-52.429,31.207-96.891,84.56  c-25.821,30.984-44.906,61.954-61.747,89.279c-15.005,24.347-28.544,46.312-43.785,63.28v140.19h18.33  c32.316,0,61.817-19.012,75.156-48.437c11.555-25.485,23.145-48.919,34.451-69.65c19.516-35.786,39.227-48.37,52.345-52.63v171.594  h34.598V269.452c8.204-6.697,22.571-20.887,32.068-44.071C524.454,172.885,503.604,116.212,482.327,77.913z"/>
                <path d="M1.072,431.291c3.157,10.424,12.594,17.427,23.485,17.427H274.33c26.543,0,51.178-12.833,66.528-33.72H1.784  C-0.254,420.047-0.604,425.756,1.072,431.291z"/>
                <rect x="436.286" y="414.996" width="34.598" height="34.598"/>
            </svg>
        `;
  };

  const productImgExtra = () => {
    return `
            <?xml version="1.0" encoding="iso-8859-1"?>
            <!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
                viewBox="0 0 512 512" xml:space="preserve">
            <path style="fill:#FFE98F;" d="M107.457,164.346H69.531V126.42c0-45.31,36.863-82.173,82.173-82.173h252.84v37.926h-252.84
                c-24.398,0-44.247,19.849-44.247,44.247V164.346z"/>
            <path style="fill:#006C70;" d="M322.37,176.988L322.37,176.988c-20.859,0-37.926-17.067-37.926-37.926V37.926
                C284.444,17.067,301.511,0,322.37,0l0,0c20.859,0,37.926,17.067,37.926,37.926v101.136
                C360.296,159.921,343.23,176.988,322.37,176.988z"/>
            <path style="fill:#FFE98F;" d="M322.37,101.136L322.37,101.136c-34.91,0-63.21,28.3-63.21,63.21v25.284h126.42v-25.284
                C385.58,129.436,357.28,101.136,322.37,101.136z"/>
            <path style="fill:#A2001D;" d="M88.494,120.099c-41.825,0-75.852,34.027-75.852,75.852s34.027,75.852,75.852,75.852
                s75.852-34.027,75.852-75.852S130.319,120.099,88.494,120.099z"/>
            <path style="fill:#6C0014;" d="M88.494,271.802c41.825,0,75.852-34.027,75.852-75.852s-34.027-75.852-75.852-75.852"/>
            <path style="fill:#FFC170;" d="M322.37,101.136L322.37,101.136c-0.424,0-0.842,0.024-1.264,0.032v88.462h64.474v-25.284
                C385.58,129.436,357.28,101.136,322.37,101.136z"/>
            <path style="fill:#00A1A7;" d="M322.37,158.025c-97.591,0-176.988,79.397-176.988,176.988c0,55.376,25.811,107.217,69.531,140.643
                V512h214.914v-36.344c43.72-33.428,69.531-85.268,69.531-140.643C499.358,237.421,419.961,158.025,322.37,158.025z"/>
            <path style="fill:#006C70;" d="M322.37,158.025V512h107.457v-36.344c43.72-33.428,69.531-85.268,69.531-140.643
                C499.358,237.421,419.961,158.025,322.37,158.025z"/>
            <rect x="259.16" y="316.049" style="fill:#FFE98F;" width="126.42" height="37.926"/>
            </svg>
        `;
  };

  const rating = () => {
    return `
            <svg height="800px" width="800px" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
                viewBox="0 0 47.94 47.94" xml:space="preserve">
                <path style="fill:#ED8A19;" d="M26.285,2.486l5.407,10.956c0.376,0.762,1.103,1.29,1.944,1.412l12.091,1.757
                c2.118,0.308,2.963,2.91,1.431,4.403l-8.749,8.528c-0.608,0.593-0.886,1.448-0.742,2.285l2.065,12.042
                c0.362,2.109-1.852,3.717-3.746,2.722l-10.814-5.685c-0.752-0.395-1.651-0.395-2.403,0l-10.814,5.685
                c-1.894,0.996-4.108-0.613-3.746-2.722l2.065-12.042c0.144-0.837-0.134-1.692-0.742-2.285l-8.749-8.528
                c-1.532-1.494-0.687-4.096,1.431-4.403l12.091-1.757c0.841-0.122,1.568-0.65,1.944-1.412l5.407-10.956
                C22.602,0.567,25.338,0.567,26.285,2.486z"/>
            </svg>
            `;
  };

  const handleCountCartItems = () => {
    let count = 0;
    const countElement = document.querySelector("[data-products-qtd]");
    document.addEventListener("cart-updated", (event) => {
      const { detail } = event;
      count = count + detail.item;
      if (typeof count === "number") {
        countElement.innerHTML = count;
      }
    });
  };

  async function handleAddToCart(event) {
    event.preventDefault();
    const formData = new FormData(this);
    const data = Object.fromEntries(formData.entries());

    if (data.stock == 0) {
      alert("Produto fora de estoque.");
      return;
    }

    const url = `${endpoint}/addToCart`;
    const body = {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    };
    const response = await fetch(url, body);
    const result = await response.json();
    if (result.status === "product_added_to_cart") {
      document.dispatchEvent(
        new CustomEvent("cart-updated", {
          bubbles: true,
          detail: {
            item: 1,
          },
        })
      );
      rerenderPage();
      return;
    }

    if (result.status === "product_out_of_stock") {
      alert("Produto fora de estoque.");
      return;
    }
  }

  const createProductItem = (product) => {
    let stars = "";
    for (let i = 0; i < 5; i++) {
      stars = stars + rating();
    }
    const image =
      product.id <= 5
        ? productImg()
        : product.id <= 7
        ? productImgVariant()
        : productImgExtra();
    return `
            <div class="product">
                <div class="image">
                    ${image}
                </div>
                <div class="name"><p>${product.name}</p></div>
                <div class="stars">${stars}</div>
                <div class="price"><p>R$${product.price}</p></div>
                <div class="stock"><p>Unidades: ${product.stock}</p></div>
                <div class="description"><p>${product.description}</p></div>
                    ${
                      product.stock > 0
                        ? `
                        <form data-id='${product.id}'>
                            <input type="hidden" name="quantity" value="1">
                            <input type="hidden" name="id" value='${product.id}'>
                            <input type="hidden" name="stock" value='${product.stock}'>
                    
                            <button class="button" type="submit" id='button-${product.id}'>
                                Adicionar ao carrinho
                            </button>
                        </form>
                    `
                        : `
                        <button class="button disabled" type="button">
                            Fora de estoque
                        </button>
                        `
                    }

            </div>
        `;
  };

  function convertToHTML(element) {
    const parsedHTML = new DOMParser().parseFromString(element, "text/html");
    return parsedHTML.body.firstChild;
  }

  function emptySate() {
    return `
            <div class="empty-state">
                <h1>
                    Que pena, nossos produtos acabaram no nosso queimão de estoques! Você perdeu... Fique de olho nas nossas redes sociais para mais promoções @amandapratesc
                </h1>
            </div>
        `;
  }

  const handleProducts = async () => {
    const products = await getProducts();

    if (!products) {
      const htmlDiv = document.querySelector("div[data-products]");
      const empty = emptySate();
      const parsedHTML = convertToHTML(empty);
      htmlDiv.appendChild(parsedHTML);
      return;
    }

    products.forEach((product) => {
      const productItem = createProductItem(product);
      const htmlDiv = document.querySelector("div[data-products]");

      htmlDiv.appendChild(convertToHTML(productItem));

      const formOnSubmit = document.querySelector(
        `form[data-id='${product.id}']`
      );
      formOnSubmit && formOnSubmit.addEventListener("submit", handleAddToCart);
    });
  };

  const rerenderPage = () => {
    const htmlDiv = document.querySelector("div[data-products]");
    htmlDiv.innerHTML = "";
    handleProducts();
  };

  document.addEventListener("DOMContentLoaded", () => {
    handleProducts();
    handleCountCartItems();
  });
})();
