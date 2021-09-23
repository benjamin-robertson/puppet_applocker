# frozen_string_literal: true

Facter.add(:hash_merge) do
  # https://puppet.com/docs/puppet/latest/fact_overview.html
  setcode do
    hash1 = {1=>"One", 2=>"Two", 3=>"Three"}
    hash2 = {4=>"First", 5=>"Second", 6=>"Third"}
    hash3 = hash1.merge hash2
    hash3
  end
end
