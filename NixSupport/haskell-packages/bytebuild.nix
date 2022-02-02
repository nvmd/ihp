{ mkDerivation, base, byteslice, bytestring, fetchzip, gauge
, ghc-meta, integer-logarithms, lib, natural-arithmetic, primitive
, primitive-offset, primitive-unlifted, QuickCheck
, quickcheck-classes, quickcheck-instances, run-st, tasty
, tasty-hunit, tasty-quickcheck, template-haskell, text, text-short
, vector, wide-word, zigzag
}:
mkDerivation {
  pname = "bytebuild";
  version = "0.3.9.0";
  src = fetchzip {
    url = "https://github.com/zacwood9/bytebuild/archive/refs/heads/master.zip";
    sha256 = "04hz2l696207811zx7irbalj6b47rpy3xxd4zs6w645nngv5b69y";
  };
  libraryHaskellDepends = [
    base byteslice bytestring ghc-meta integer-logarithms
    natural-arithmetic primitive primitive-offset primitive-unlifted
    run-st template-haskell text-short wide-word zigzag
  ];
  testHaskellDepends = [
    base byteslice bytestring natural-arithmetic primitive
    primitive-unlifted QuickCheck quickcheck-classes
    quickcheck-instances tasty tasty-hunit tasty-quickcheck text
    text-short vector wide-word
  ];
  benchmarkHaskellDepends = [
    base byteslice gauge natural-arithmetic primitive text-short
  ];
  homepage = "https://github.com/byteverse/bytebuild";
  description = "Serialize to a small byte arrays";
  license = lib.licenses.bsd3;
}
