import { LightningElement, api } from 'lwc';

export const DOLLAR_SYMBOL = '$';
export default class PriceSymbol extends LightningElement {
    @api
    price = 0;

    moneySymbol = '';
    moneySymbols = [];

    connectedCallback() {
        let multiplier = 0;
        if (this.price === 0) {
            this.moneySymbol = '';
        } else {
            // Get the number of $ to show for each price. Range from 1 - 4
            multiplier = Math.max(
                Math.min(parseInt(this.price / 1000, 10) - 2, 4),
                1
            );

            this.moneySymbol = DOLLAR_SYMBOL.repeat(multiplier);
            for (let i = 0; i < multiplier; i++) {
                this.moneySymbols.push(DOLLAR_SYMBOL);
            }
        }
    }
}
