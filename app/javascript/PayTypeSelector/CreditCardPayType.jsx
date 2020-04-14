import React from 'react'

class CreditCardPayType extends React.Component {
  render() {
    return (
      <div>
        <div className="field"><br/>
          <label htmlFor="order_credit_card_number">Card number: &nbsp;</label>
          <input type="password"
                 name="order[credit_card_number]" 
                 id="order_credit_card_number" />
        </div>
        <div className="field"><br/>
          <label htmlFor="order_expiration_date">Expiry date: &nbsp;&nbsp;&nbsp;&nbsp;</label>
          <input type="text"
                 name="order[expiration_date]" 
                 id="order_expiration_date"
                 size="12"
                 placeholder="e.g. 03/19" />
        </div>
      </div>
    );
  }
}
export default CreditCardPayType
