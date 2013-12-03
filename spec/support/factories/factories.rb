FactoryGirl.define do
  factory :product, class: Akatus::Product do
    code              '0001'
    name              'Produto Tabajara'
    quantity          1
    weight            2.5
    freight_amount    10.0
    discount_amount   1.99
    price             55.99
  end

  factory :credit_card, class: Akatus::CreditCard do
    number            '5453010000066167'
    flag              'master'
    cvv               '123'
    expires_at        '05/2018'
    holder_name       'AUTORIZAR'
    holder_cpf        '13786614431'
    holder_phone      '1133331111'
  end

  factory :address, class: Akatus::Address do
    postal_code       '22111000'
    street            'Evergreen Al.'
    number            '30'
    complement        'apto 23'
    neighborhood      'Centro'
    country           'BRA'
    city              'São Paulo'
    state             'SP'
    kind              'residencial'
  end

  factory :phone, class: Akatus::Phone do
    kind              'residencial'
    number            '21911111111'
  end

  factory :order, class: Akatus::Order do
    buyer_email       'user@mailer.com'
    buyer_name        'Homer Simpson'
    discount_amount   1.98
    weight            0.99
    freight_amount    1.78
    payment_method    'cartao_master'
    installments      3
    reference         'referencia-01'

    products { [FactoryGirl.build(:product)] }
    credit_card       FactoryGirl.build(:credit_card)
    address           FactoryGirl.build(:address)
    phone             FactoryGirl.build(:phone)
  end
end
