// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/introspection/IERC165.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DexAddressRegistry is Ownable {
    bytes4 private constant INTERFACE_ID_ERC721 = 0x80ac58cd;

    /// @notice Artion contract
    address public artion;

    /// @notice DexAuction contract
    address public auction;

    /// @notice DexMarketplace contract
    address public marketplace;

    /// @notice DexBundleMarketplace contract
    address public bundleMarketplace;

    /// @notice DexNFTFactory contract
    address public factory;

    /// @notice DexNFTFactoryPrivate contract
    address public privateFactory;

    /// @notice DexArtFactory contract
    address public artFactory;

    /// @notice DexArtFactoryPrivate contract
    address public privateArtFactory;

    /// @notice DexTokenRegistry contract
    address public tokenRegistry;

    /// @notice DexPriceFeed contract
    address public priceFeed;

    /**
     @notice Update artion contract
     @dev Only admin
     */
    function updateArtion(address _artion) external onlyOwner {
        require(
            IERC165(_artion).supportsInterface(INTERFACE_ID_ERC721),
            "Not ERC721"
        );
        artion = _artion;
    }

    /**
     @notice Update DexAuction contract
     @dev Only admin
     */
    function updateAuction(address _auction) external onlyOwner {
        auction = _auction;
    }

    /**
     @notice Update DexMarketplace contract
     @dev Only admin
     */
    function updateMarketplace(address _marketplace) external onlyOwner {
        marketplace = _marketplace;
    }

    /**
     @notice Update DexBundleMarketplace contract
     @dev Only admin
     */
    function updateBundleMarketplace(address _bundleMarketplace)
        external
        onlyOwner
    {
        bundleMarketplace = _bundleMarketplace;
    }

    /**
     @notice Update DexNFTFactory contract
     @dev Only admin
     */
    function updateNFTFactory(address _factory) external onlyOwner {
        factory = _factory;
    }

    /**
     @notice Update DexNFTFactoryPrivate contract
     @dev Only admin
     */
    function updateNFTFactoryPrivate(address _privateFactory)
        external
        onlyOwner
    {
        privateFactory = _privateFactory;
    }

    /**
     @notice Update DexArtFactory contract
     @dev Only admin
     */
    function updateArtFactory(address _artFactory) external onlyOwner {
        artFactory = _artFactory;
    }

    /**
     @notice Update DexArtFactoryPrivate contract
     @dev Only admin
     */
    function updateArtFactoryPrivate(address _privateArtFactory)
        external
        onlyOwner
    {
        privateArtFactory = _privateArtFactory;
    }

    /**
     @notice Update token registry contract
     @dev Only admin
     */
    function updateTokenRegistry(address _tokenRegistry) external onlyOwner {
        tokenRegistry = _tokenRegistry;
    }

    /**
     @notice Update price feed contract
     @dev Only admin
     */
    function updatePriceFeed(address _priceFeed) external onlyOwner {
        priceFeed = _priceFeed;
    }
}
