pragma solidity ^0.8.6;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "../ERC20WrapperGluwacoin.sol";

contract ERC20WrapperGluwacoinMock is Initializable, ERC20WrapperGluwacoin {

    constructor(
        string memory name,
        string memory symbol,
        IERC20 token
    ) {
        __ERC20WrapperGluwacoinMock_init(name, symbol, token);
    }

    function __ERC20WrapperGluwacoinMock_init(
        string memory name,
        string memory symbol,
        IERC20 token
    ) internal {
        __Context_init_unchained();
        __ERC20_init_unchained(name, symbol);
        __ERC20ETHless_init_unchained();
        __ERC20Reservable_init_unchained();
        __ERC20Wrapper_init_unchained(token);
        __ERC20WrapperGluwacoin_init_unchained();
    } 


    function __ERC20Wrapper_init_unchained(
        IERC20 token
    ) internal override initializer {
        _setupToken(token);
        _setupRole(WRAPPER_ROLE, _msgSender());
    }

    uint256[50] private __gap;
}