#include "vcpkg_installed/vcpkg/pkgs/concurrencpp_x64-windows/include/concurrencpp/executors/executor.h"
#include "vcpkg_installed/vcpkg/pkgs/concurrencpp_x64-windows/include/concurrencpp/executors/constants.h"

#include "vcpkg_installed/vcpkg/pkgs/concurrencpp_x64-windows/include/concurrencpp/errors.h"
#include "vcpkg_installed/vcpkg/pkgs/concurrencpp_x64-windows/include/concurrencpp/threads/thread.h"

void concurrencpp::details::throw_runtime_shutdown_exception(std::string_view executor_name) {
    const auto error_msg = std::string(executor_name) + consts::k_executor_shutdown_err_msg;
    throw errors::runtime_shutdown(error_msg);
}

std::string concurrencpp::details::make_executor_worker_name(std::string_view executor_name) {
    return std::string(executor_name) + " worker";
}
