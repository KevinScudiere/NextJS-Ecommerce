import getBillboard from "@/actions/get-billboards";
import Container from "@/components/ui/container"
import Billboard from "@/components/billboard"
import getProducts from "@/actions/get-products";
import ProductList from "@/components/product-list";

export const revalidate = 0;


const HomePage = async () => {
    const products = await getProducts({ isFeatured: true })
    const billboard = await getBillboard("9bebe42b-c8ae-4225-a105-03dc7b58c282");
    return (
        <Container>
            <div className="space-y-10 pb-10">
                <Billboard data={billboard}/>
                <div className="flex flex-col gap-y-8 px-4 sm:px-6 lg:px-8">
                    <ProductList title="Prodotti in Evidenza" items={products}/>
                </div>
            </div>
        </Container>
    );
}

export default HomePage;