json.array!(@estabelecimentos) do |estabelecimento|
  json.extract! estabelecimento, :id, :nome, :endereco, :numero, :bairro, :cidade, :estado, :email, :site, :fanpage
  json.url estabelecimento_url(estabelecimento, format: :json)
end
