data PhoneType = WorkLandline | PrivateMobile | WorkMobile | Other
  deriving (Eq, Ord, Read, Show)
-- type CountryCode = Integer

data CountryCode = CountryCode Integer
  deriving (Read, Eq, Ord)

data PhoneNo = PhoneNo Integer
  deriving (Read, Eq, Ord)

toCountryCode :: Integer -> CountryCode
toCountryCode n
  | n >= 0 = CountryCode n
  | otherwise = error "Negative country code"

toPhoneNo :: Integer -> PhoneNo
toPhoneNo n
  | n>= 0 = PhoneNo n
  | otherwise = error "Negative phone number"

instance Show CountryCode where
  show (CountryCode n) = "+" ++ show n

instance Show PhoneNo where
  show (PhoneNo n) = show n

data Phone = Phone {
  phoneType :: PhoneType, 
  countryCode :: CountryCode, 
  phoneNo :: PhoneNo
} deriving (Eq, Read)

instance Show Phone where
    show (Phone pt cc pn) = show pt ++ " " ++ show pn ++ " (" ++ show pt ++ ")"
